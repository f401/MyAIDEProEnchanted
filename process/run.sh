java -jar ForgeAutoRenamingTool-1.0.8-all.jar --input src/classes.jar --output output/classes_out.jar --map mappings.txt --lib src/classes2.jar --lib src/classes3.jar --lib android.jar 
java -jar ForgeAutoRenamingTool-1.0.8-all.jar --input src/classes2.jar --output output/classes2_out.jar --map mappings.txt --lib src/classes.jar --lib src/classes3.jar --lib android.jar
java -jar ForgeAutoRenamingTool-1.0.8-all.jar --input src/classes3.jar --output output/classes3_out.jar --map mappings.txt --lib src/classes2.jar --lib src/classes.jar --lib android.jar

execute_renaming_with_libs() {
    java -jar ForgeAutoRenamingTool-1.0.8-all.jar --input $1 --lib src/classes3.jar --output $2 --map mappings.txt --lib src/classes2.jar --lib src/classes.jar --lib android.jar
}

package_jar_into_dex() {
#	java -cp d8.jar -Xmx2g com.android.tools.r8.D8 --output $2 --thread-count 4 $1
}

execute_renaming_with_libs src/zh.jar output/zh_out.jar
execute_renaming_with_libs src/en.jar output/en_out.jar
execute_renaming_with_libs src/ndk.jar output/ndk_out.jar
execute_renaming_with_libs src/packagingservice.jar output/packagingservice_out.jar

package_jar_into_dex output/classes_out.jar output/classes.dex.jar
package_jar_into_dex output/classes2_out.jar output/classes2.dex.jar
package_jar_into_dex output/classes3_out.jar output/classes3.dex.jar

package_jar_into_dex output/zh_output.jar output/zh.jar
package_jar_into_dex output/en_output.jar output/en.jar

package_jar_into_dex output/packagingservice_output.jar output/packagingservice.jar
package_jar_into_dex output/ndk_output.jar output/ndk.jar

mv output/ndk.jar output/ndk.zip
mv output/packagingservice.jar output/packagingservice.zip

#rm -f output/*_output.jar