import {
  Controller,
  Patch,
  Post,
  UseGuards,
  Get,
  Delete,
  Param,
  ParseIntPipe,
  Body,
} from '@nestjs/common';
import { JwtGuard } from 'src/auth/guard';
import { CuserService } from './cuser.service';
import { CreateCuserDto, EditCuserDto } from './dto';

@UseGuards(JwtGuard)
@Controller('cuser')
export class CuserController {
  constructor(private cuserService: CuserService) {}

  @Get()
  getCusers() {
    return this.cuserService.getCusers();
  }

  @Get(':id')
  getCuserById(@Param('id', ParseIntPipe) Id: number) {
    return this.cuserService.getCuserById(Id);
  }

  @Post('add')
  createCuser(@Body() dto: CreateCuserDto) {
    return this.cuserService.createCuser(dto);
  }

  @Patch(':id')
  editCuserById(
    @Param('id', ParseIntPipe) Id: number,
    @Body() dto: EditCuserDto,
  ) {
    return this.cuserService.editCuserById(Id, dto);
  }

  @Delete(':id')
  deleteCuserById(@Param('id', ParseIntPipe) Id: number) {
    return this.cuserService.deleteCuserById(Id);
  }
}
