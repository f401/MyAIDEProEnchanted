.class Labcd/AJ;
.super Ljava/io/PipedInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/zJ$c;-><init>(Labcd/zJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/zJ$c;


# direct methods
.method constructor <init>(Labcd/zJ$c;)V
    .registers 2

    iput-object p1, p0, Labcd/AJ;->j6:Labcd/zJ$c;

    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    const/16 p1, 0xb88

    new-array p1, p1, [B

    iput-object p1, p0, Ljava/io/PipedInputStream;->buffer:[B

    return-void
.end method
