.class public Lorg/antlr/v4/runtime/ANTLRFileStream;
.super Lorg/antlr/v4/runtime/ANTLRInputStream;
.source "ANTLRFileStream.java"


# instance fields
.field protected fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/ANTLRFileStream;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/antlr/v4/runtime/ANTLRFileStream;->fileName:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/ANTLRFileStream;->load(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSourceName()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lorg/antlr/v4/runtime/ANTLRFileStream;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/misc/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object p1

    iput-object p1, p0, Lorg/antlr/v4/runtime/ANTLRFileStream;->data:[C

    .line 34
    iget-object p1, p0, Lorg/antlr/v4/runtime/ANTLRFileStream;->data:[C

    array-length p1, p1

    iput p1, p0, Lorg/antlr/v4/runtime/ANTLRFileStream;->n:I

    return-void
.end method
