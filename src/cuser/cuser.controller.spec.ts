import { Test, TestingModule } from '@nestjs/testing';
import { CuserController } from './cuser.controller';

describe('CuserController', () => {
  let controller: CuserController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [CuserController],
    }).compile();

    controller = module.get<CuserController>(CuserController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
