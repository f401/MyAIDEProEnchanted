.class public final Lc/c;
.super Lc/s;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:Lc/c;

.field public static final h:Lc/c;


# instance fields
.field public final k:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    sput-object v0, Lc/c;->a:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lc/c;->b:[B

    new-instance v0, Lc/c;

    invoke-direct {v0, v2}, Lc/c;-><init>(Z)V

    sput-object v0, Lc/c;->c:Lc/c;

    new-instance v0, Lc/c;

    invoke-direct {v0, v3}, Lc/c;-><init>(Z)V

    sput-object v0, Lc/c;->h:Lc/c;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lc/s;-><init>()V

    if-eqz p1, :cond_0

    sget-object v0, Lc/c;->a:[B

    :goto_0
    iput-object v0, p0, Lc/c;->k:[B

    return-void

    :cond_0
    sget-object v0, Lc/c;->b:[B

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lc/s;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    sget-object v0, Lc/c;->b:[B

    iput-object v0, p0, Lc/c;->k:[B

    :goto_0
    return-void

    :cond_0
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    sget-object v0, Lc/c;->a:[B

    iput-object v0, p0, Lc/c;->k:[B

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lx/a;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lc/c;->k:[B

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lc/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/c;->k:[B

    aget-byte v1, v1, v0

    check-cast p1, Lc/c;

    iget-object v2, p1, Lc/c;->k:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final e(Lc/q;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lc/c;->k:[B

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lc/c;->k:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lc/c;->k:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method
