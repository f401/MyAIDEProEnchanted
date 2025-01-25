.class public final Lc/g;
.super Lc/s;
.source "SourceFile"


# static fields
.field public static a:[Lc/g;


# instance fields
.field public final b:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [Lc/g;

    sput-object v0, Lc/g;->a:[Lc/g;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 6

    invoke-direct {p0}, Lc/s;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2b

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const-string v2, "malformed enumerated"

    if-nez v0, :cond_1b

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_15

    goto :goto_1b

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    :goto_1b
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2b

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_25

    goto :goto_2b

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    :goto_2b
    invoke-static {p1}, Lx/a;->b([B)[B

    move-result-object p1

    iput-object p1, p0, Lc/g;->b:[B

    return-void
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 3

    instance-of v0, p1, Lc/g;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lc/g;

    iget-object v0, p0, Lc/g;->b:[B

    iget-object p1, p1, Lc/g;->b:[B

    invoke-static {v0, p1}, Lx/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public final e(Lc/q;)V
    .registers 4

    const/16 v0, 0xa

    iget-object v1, p0, Lc/g;->b:[B

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .registers 3

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
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lc/g;->b:[B

    invoke-static {v0}, Lx/a;->c([B)I

    move-result v0

    return v0
.end method
