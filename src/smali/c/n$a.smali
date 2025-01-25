.class public final Lc/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lx/a;->c([B)I

    move-result v0

    iput v0, p0, Lc/n$a;->a:I

    iput-object p1, p0, Lc/n$a;->b:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lc/n$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lc/n$a;->b:[B

    check-cast p1, Lc/n$a;

    iget-object p1, p1, Lc/n$a;->b:[B

    invoke-static {v0, p1}, Lx/a;->a([B[B)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lc/n$a;->a:I

    return v0
.end method
