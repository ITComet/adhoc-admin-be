import { IsNotEmpty, IsNumber, IsOptional, IsString } from 'class-validator';

export class CreateCuserDto {
  @IsString()
  @IsNotEmpty()
  user: string;

  @IsString()
  @IsNotEmpty()
  role: string;

  @IsString()
  @IsNotEmpty()
  name: string;

  @IsString()
  @IsOptional()
  firstName?: string;

  @IsString()
  @IsNotEmpty()
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
  @IsNotEmpty()
  status: boolean;
}
