.class Landroidj/support/v4/widget/EdgeEffectCompat$EdgeEffectLollipopImpl;
.super Landroidj/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EdgeEffectLollipopImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onPull(Ljava/lang/Object;FF)Z
    .registers 5

    invoke-static {p1, p2, p3}, Landroidj/support/v4/widget/EdgeEffectCompatLollipop;->onPull(Ljava/lang/Object;FF)Z

    move-result v0

    return v0
.end method
