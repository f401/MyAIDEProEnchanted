.class Landroidj/support/v4/widget/CompoundButtonCompat$Api23CompoundButtonImpl;
.super Landroidj/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23CompoundButtonImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/widget/CompoundButtonCompatApi23;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
