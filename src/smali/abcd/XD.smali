.class Labcd/XD;
.super Ljava/util/zip/Inflater;


# static fields
.field private static final j6:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Labcd/XD;->j6:[B

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public end()V
    .registers 1

    return-void
.end method

.method public inflate([B)I
    .registers 3

    invoke-super {p0, p1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    return v0
.end method

.method public inflate([BII)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    sget-object v1, Labcd/XD;->j6:[B

    const/4 v2, 0x1

    invoke-super {p0, v1, v0, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method j6()V
    .registers 1

    invoke-super {p0}, Ljava/util/zip/Inflater;->end()V

    return-void
.end method
