.class public Landroidj/support/v4/view/WindowInsetsCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;,
        Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;,
        Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;,
        Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;


# instance fields
.field private final mInsets:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;

    invoke-direct {v0}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;

    invoke-direct {v0}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroidj/support/v4/view/WindowInsetsCompat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p1, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    return-void
.end method

.method static unwrap(Landroidj/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    goto :goto_0
.end method

.method static wrap(Ljava/lang/Object;)Landroidj/support/v4/view/WindowInsetsCompat;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidj/support/v4/view/WindowInsetsCompat;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public consumeStableInsets()Landroidj/support/v4/view/WindowInsetsCompat;
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->consumeStableInsets(Ljava/lang/Object;)Landroidj/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroidj/support/v4/view/WindowInsetsCompat;
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->consumeSystemWindowInsets(Ljava/lang/Object;)Landroidj/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    check-cast p1, Landroidj/support/v4/view/WindowInsetsCompat;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    iget-object v1, p1, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getStableInsetBottom()I
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetBottom(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetLeft()I
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetLeft(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetRight()I
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetRight(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetTop()I
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetTop(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetBottom(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetLeft(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetRight(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetTop(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hasInsets()Z
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->hasInsets(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasStableInsets()Z
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->hasStableInsets(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasSystemWindowInsets()Z
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->hasSystemWindowInsets(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isConsumed()Z
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->isConsumed(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRound()Z
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->isRound(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceSystemWindowInsets(IIII)Landroidj/support/v4/view/WindowInsetsCompat;
    .locals 6

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->replaceSystemWindowInsets(Ljava/lang/Object;IIII)Landroidj/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroidj/support/v4/view/WindowInsetsCompat;
    .locals 2

    sget-object v0, Landroidj/support/v4/view/WindowInsetsCompat;->IMPL:Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroidj/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroidj/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Landroidj/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
