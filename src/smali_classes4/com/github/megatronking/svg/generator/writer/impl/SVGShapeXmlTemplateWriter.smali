.class public Lcom/github/megatronking/svg/generator/writer/impl/SVGShapeXmlTemplateWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/megatronking/svg/generator/writer/IBufferWriter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/BufferedWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedWriter;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-string v0, "<!-- AUTO-GENERATED FILE.  DO NOT MODIFY. -->"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    const-string v0, "<shape xmlns:android=\"http://schemas.android.com/apk/res/android\" />"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method
