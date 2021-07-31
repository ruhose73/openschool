import { Button, chakra, FormControl, FormLabel, Input, Stack } from '@chakra-ui/react'
import * as React from 'react'
import {PasswordField} from "./PasswordField"

export const AuthForm = () => {

   
    return(
        <chakra.form
            onSubmit={(e) => {
            e.preventDefault() // your login logic here
            }}
            
        >
            <Stack spacing="6">
            <FormControl id="email">
                <FormLabel>Email</FormLabel>
                <Input name="email" type="email" autoComplete="email" required />
            </FormControl>
            <PasswordField />
            <Button type="submit" colorScheme="blue" size="lg" fontSize="md">
                Войти
            </Button>
            </Stack>
        </chakra.form>
    )
    
}