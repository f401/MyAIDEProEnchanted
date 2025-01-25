.class public Lcom/github/megatronking/svg/generator/svg/Svg2Vector;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseSvgToXml(Ljava/io/File;Ljava/io/File;II)Ljava/lang/String;
    .registers 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_7

    :cond_4
    const-string v0, "Invalid input params!"

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const/4 v2, 0x0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_1d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid svg file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_35
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/SvgSAXReader;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/SvgSAXReader;-><init>()V

    :try_start_3a
    invoke-virtual {v0, p0}, Lcom/github/megatronking/svg/generator/svg/SvgSAXReader;->read(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/Svg;

    if-lez p2, :cond_45

    int-to-float v1, p2

    iput v1, v0, Lcom/github/megatronking/svg/generator/svg/model/Svg;->w:F

    :cond_45
    if-lez p3, :cond_4a

    int-to-float v1, p3

    iput v1, v0, Lcom/github/megatronking/svg/generator/svg/model/Svg;->h:F

    :cond_4a
    new-instance v1, Lcom/github/megatronking/svg/generator/writer/impl/Svg2VectorTemplateWriter;

    invoke-direct {v1, v0}, Lcom/github/megatronking/svg/generator/writer/impl/Svg2VectorTemplateWriter;-><init>(Lcom/github/megatronking/svg/generator/svg/model/Svg;)V

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v0}, Lcom/github/megatronking/svg/generator/writer/impl/Svg2VectorTemplateWriter;->write(Ljava/io/BufferedWriter;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_5c} :catch_60
    .catch Lorg/dom4j/DocumentException; {:try_start_3a .. :try_end_5c} :catch_a2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :catch_60
    move-exception v0

    :goto_61
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Exception in parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :catch_a2
    move-exception v0

    goto :goto_61
.end method

.method public static parseSvgToXml(Ljava/io/File;Ljava/io/OutputStream;II)Ljava/lang/String;
    .registers 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_7

    :cond_4
    const-string v0, "Invalid input params!"

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const/4 v2, 0x0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_1d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid svg file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_35
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/SvgSAXReader;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/SvgSAXReader;-><init>()V

    :try_start_3a
    invoke-virtual {v0, p0}, Lcom/github/megatronking/svg/generator/svg/SvgSAXReader;->read(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/Svg;

    if-lez p2, :cond_45

    int-to-float v1, p2

    iput v1, v0, Lcom/github/megatronking/svg/generator/svg/model/Svg;->w:F

    :cond_45
    if-lez p3, :cond_4a

    int-to-float v1, p3

    iput v1, v0, Lcom/github/megatronking/svg/generator/svg/model/Svg;->h:F

    :cond_4a
    new-instance v1, Lcom/github/megatronking/svg/generator/writer/impl/Svg2VectorTemplateWriter;

    invoke-direct {v1, v0}, Lcom/github/megatronking/svg/generator/writer/impl/Svg2VectorTemplateWriter;-><init>(Lcom/github/megatronking/svg/generator/svg/model/Svg;)V

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v0}, Lcom/github/megatronking/svg/generator/writer/impl/Svg2VectorTemplateWriter;->write(Ljava/io/BufferedWriter;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_5c} :catch_60
    .catch Lorg/dom4j/DocumentException; {:try_start_3a .. :try_end_5c} :catch_a2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :catch_60
    move-exception v0

    :goto_61
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Exception in parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :catch_a2
    move-exception v0

    goto :goto_61
.end method

.method public static parseSvgToXml(Ljava/io/InputStream;Ljava/io/OutputStream;II)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_4

    if-nez p1, :cond_7

    :cond_4
    const-string v0, "Invalid input params!"

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/github/megatronking/svg/generator/svg/SvgSAXReader;

    invoke-direct {v0}, Lcom/github/megatronking/svg/generator/svg/SvgSAXReader;-><init>()V

    :try_start_c
    invoke-virtual {v0, p0}, Lcom/github/megatronking/svg/generator/svg/SvgSAXReader;->read(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/megatronking/svg/generator/svg/model/Svg;

    if-lez p2, :cond_17

    int-to-float v1, p2

    iput v1, v0, Lcom/github/megatronking/svg/generator/svg/model/Svg;->w:F

    :cond_17
    if-lez p3, :cond_1c

    int-to-float v1, p3

    iput v1, v0, Lcom/github/megatronking/svg/generator/svg/model/Svg;->h:F

    :cond_1c
    new-instance v1, Lcom/github/megatronking/svg/generator/writer/impl/Svg2VectorTemplateWriter;

    invoke-direct {v1, v0}, Lcom/github/megatronking/svg/generator/writer/impl/Svg2VectorTemplateWriter;-><init>(Lcom/github/megatronking/svg/generator/svg/model/Svg;)V

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v0}, Lcom/github/megatronking/svg/generator/writer/impl/Svg2VectorTemplateWriter;->write(Ljava/io/BufferedWriter;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2e} :catch_32
    .catch Lorg/dom4j/DocumentException; {:try_start_c .. :try_end_2e} :catch_4b

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :catch_32
    move-exception v0

    :goto_33
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Exception when parsing :\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :catch_4b
    move-exception v0

    goto :goto_33
.end method
