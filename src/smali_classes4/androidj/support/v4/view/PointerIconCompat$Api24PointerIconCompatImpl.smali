.class Landroidj/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;
.super Landroidj/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/PointerIconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24PointerIconCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;
    .registers 5

    invoke-static {p1, p2, p3}, Landroidj/support/v4/view/PointerIconCompatApi24;->create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;
    .registers 4

    invoke-static {p1, p2}, Landroidj/support/v4/view/PointerIconCompatApi24;->getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/content/res/Resources;I)Ljava/lang/Object;
    .registers 4

    invoke-static {p1, p2}, Landroidj/support/v4/view/PointerIconCompatApi24;->load(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
