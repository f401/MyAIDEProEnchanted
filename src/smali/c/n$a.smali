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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lx/a;->c([B)I

    move-result v0

    iput v0, p0, Lc/n$a;->a:I

    iput-object p1, p0, Lc/n$a;->b:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lc/n$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/n$a;->b:[B

    check-cast p1, Lc/n$a;

    iget-object v1, p1, Lc/n$a;->b:[B

    invoke-static {v0, v1}, Lx/a;->a([B[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lc/n$a;->a:I

    return v0
.end method
