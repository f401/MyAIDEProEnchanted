.class public Lcom/appfour/backbone/api/objects/UISceneWidget;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field public fill:Z

.field public height:I

.field public text:Ljava/lang/CharSequence;

.field public textAlignTop:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/appfour/backbone/api/objects/UISceneWidget;->x:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/appfour/backbone/api/objects/UISceneWidget;->y:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/appfour/backbone/api/objects/UISceneWidget;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/appfour/backbone/api/objects/UISceneWidget;->height:I

    iput-boolean p2, p0, Lcom/appfour/backbone/api/objects/UISceneWidget;->fill:Z

    iput-object p3, p0, Lcom/appfour/backbone/api/objects/UISceneWidget;->text:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/appfour/backbone/api/objects/UISceneWidget;->textAlignTop:Z

    return-void
.end method
