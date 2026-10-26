.class public final Lc/g;
.super Lc/s;
.source "SourceFile"


# static fields
.field public static a:[Lc/g;


# instance fields
.field public final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [Lc/g;

    sput-object v0, Lc/g;->a:[Lc/g;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lc/s;-><init>()V

    array-length v0, p1

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    :cond_1
    invoke-static {p1}, Lx/a;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lc/g;->b:[B

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "malformed enumerated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "malformed enumerated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .locals 2

    instance-of v0, p1, Lc/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lc/g;

    iget-object v0, p0, Lc/g;->b:[B

    iget-object v1, p1, Lc/g;->b:[B

    invoke-static {v0, v1}, Lx/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final e(Lc/q;)V
    .locals 2

    const/16 v0, 0xa

    iget-object v1, p0, Lc/g;->b:[B

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lc/g;->b:[B

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/g;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lc/g;->b:[B

    invoke-static {v0}, Lx/a;->c([B)I

    move-result v0

    return v0
.end method
