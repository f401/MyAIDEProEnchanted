.class Labcd/g$a;
.super Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;-><init>(Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Labcd/g;

    invoke-direct {v0, p0, p1}, Labcd/g;-><init>(Labcd/as/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
