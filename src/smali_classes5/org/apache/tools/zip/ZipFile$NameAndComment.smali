.class final Lorg/apache/tools/zip/ZipFile$NameAndComment;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameAndComment"
.end annotation


# instance fields
.field private final comment:[B

.field private final name:[B


# direct methods
.method private constructor <init>([B[B)V
    .registers 3

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    iput-object p1, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->name:[B

    .line 1004
    iput-object p2, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->comment:[B

    .line 1005
    return-void
.end method

.method synthetic constructor <init>([B[BLorg/apache/tools/zip/ZipFile$1;)V
    .registers 4

    .line 999
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/zip/ZipFile$NameAndComment;-><init>([B[B)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B
    .registers 2

    .line 999
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->name:[B

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B
    .registers 2

    .line 999
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->comment:[B

    return-object v0
.end method
