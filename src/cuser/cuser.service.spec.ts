import { Test, TestingModule } from '@nestjs/testing';
import { CuserService } from './cuser.service';

describe('CuserService', () => {
  let service: CuserService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [CuserService],
    }).compile();

    service = module.get<CuserService>(CuserService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
