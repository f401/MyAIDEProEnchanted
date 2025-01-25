.class public final Lc/ax;
.super Lc/l;
.source "SourceFile"


# static fields
.field public static final a:Lc/ax;

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc/ax;

    invoke-direct {v0}, Lc/ax;-><init>()V

    sput-object v0, Lc/ax;->a:Lc/ax;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lc/ax;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lc/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 4

    const/4 v0, 0x5

    sget-object v1, Lc/ax;->b:[B

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
