.class Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "StringResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/StringResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringResourceFilterOutputStream"
.end annotation


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;

.field final this$0:Lorg/apache/tools/ant/types/resources/StringResource;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/resources/StringResource;)V
    .registers 3

    .line 248
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;->this$0:Lorg/apache/tools/ant/types/resources/StringResource;

    .line 249
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    .line 251
    return-void
.end method

.method private setValueFromOutputStream(Ljava/lang/String;)V
    .registers 3

    .line 264
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;->this$0:Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/StringResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 265
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;->this$0:Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/StringResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 267
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;->this$0:Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/StringResource;->setValue(Ljava/lang/String;)V

    .line 270
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 256
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;->this$0:Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/StringResource;->access$000(Lorg/apache/tools/ant/types/resources/StringResource;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    .line 257
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_11
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;->setValueFromOutputStream(Ljava/lang/String;)V

    .line 260
    return-void

    .line 257
    :cond_15
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;->this$0:Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-static {v1}, Lorg/apache/tools/ant/types/resources/StringResource;->access$000(Lorg/apache/tools/ant/types/resources/StringResource;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method
