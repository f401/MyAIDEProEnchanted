.class public final Lc/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/ae;->p()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public a:I

.field public final b:Lc/ae;


# direct methods
.method public constructor <init>(Lc/ae;)V
    .locals 1

    iput-object p1, p0, Lc/af;->b:Lc/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/af;->a:I

    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 2

    iget v0, p0, Lc/af;->a:I

    iget-object v1, p0, Lc/af;->b:Lc/ae;

    .line 1
    iget-object v1, v1, Lc/ae;->o:[Lc/o;

    .line 2
    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/af;->b:Lc/ae;

    .line 1
    iget-object v0, v0, Lc/ae;->o:[Lc/o;

    .line 2
    iget v1, p0, Lc/af;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/af;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method
