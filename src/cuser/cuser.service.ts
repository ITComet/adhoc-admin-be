import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateCuserDto, EditCuserDto } from './dto';

@Injectable()
export class CuserService {
  constructor(private prisma: PrismaService) {}

  getCusers() {
    return this.prisma.cuser.findMany({});
  }

  getCuserById(Id: number) {
    return this.prisma.cuser.findFirst({
      where: {
        id: Id,
      },
    });
  }

  async createCuser(dto: CreateCuserDto) {
    const cuser = await this.prisma.cuser.create({
      data: {
        ...dto,
      },
    });
    return cuser;
  }

  async editCuserById(Id: number, dto: EditCuserDto) {
    //get the cuser by id
    return await this.prisma.cuser.update({
      where: {
        id: Id,
      },
      data: {
        ...dto,
      },
    });
  }

  async deleteCuserById(Id: number) {
    await this.prisma.cuser.delete({
      where: {
        id: Id,
      },
    });
  }
}
