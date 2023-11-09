import { Module } from '@nestjs/common';
import { CuserController } from './cuser.controller';
import { CuserService } from './cuser.service';

@Module({
  controllers: [CuserController],
  providers: [CuserService]
})
export class CuserModule {}
