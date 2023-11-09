import { Module } from '@nestjs/common';
import { CuserController } from './cuser.controller';
import { CuserService } from './cuser.service';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  imports: [PrismaModule],
  controllers: [CuserController],
  providers: [CuserService],
})
export class CuserModule {}
