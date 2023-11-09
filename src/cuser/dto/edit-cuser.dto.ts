import { IsNumber, IsOptional, IsString } from 'class-validator';

export class EditCuserDto {
  @IsString()
  @IsOptional()
  user: string;

  @IsString()
  @IsOptional()
  role: string;

  @IsString()
  @IsOptional()
  name: string;

  @IsString()
  @IsOptional()
  firstName?: string;

  @IsString()
  @IsOptional()
  email: string;

  @IsNumber()
  @IsOptional()
  phoneInt?: number;

  @IsString()
  @IsOptional()
  detail1?: string;

  @IsString()
  @IsOptional()
  detail2?: string;

  @IsString()
  @IsOptional()
  status?: boolean;
}
