.class public Lcom/appfour/backbone/api/objects/UIScene;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field public deviceHeight:I

.field public deviceWidth:I

.field public imeHeight:I

.field public pressedBackKey:Z

.field public pressedKey:Z

.field public touchX:I

.field public touchX2:I

.field public touchY:I

.field public touchY2:I

.field public widgets:[Lcom/appfour/backbone/api/objects/UISceneWidget;


# direct methods
.method public varargs constructor <init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/appfour/backbone/api/objects/UIScene;->deviceWidth:I

    iput p2, p0, Lcom/appfour/backbone/api/objects/UIScene;->deviceHeight:I

    iput p3, p0, Lcom/appfour/backbone/api/objects/UIScene;->imeHeight:I

    iput-boolean p4, p0, Lcom/appfour/backbone/api/objects/UIScene;->pressedBackKey:Z

    iput-boolean p5, p0, Lcom/appfour/backbone/api/objects/UIScene;->pressedKey:Z

    iput p6, p0, Lcom/appfour/backbone/api/objects/UIScene;->touchX:I

    iput p7, p0, Lcom/appfour/backbone/api/objects/UIScene;->touchY:I

    iput p8, p0, Lcom/appfour/backbone/api/objects/UIScene;->touchX2:I

    iput p9, p0, Lcom/appfour/backbone/api/objects/UIScene;->touchY2:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p10

    if-ge v0, v2, :cond_1

    aget-object v2, p10, v0

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/appfour/backbone/api/objects/UISceneWidget;->width:I

    if-lez v3, :cond_0

    iget v3, v2, Lcom/appfour/backbone/api/objects/UISceneWidget;->height:I

    if-lez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    iput-object v0, p0, Lcom/appfour/backbone/api/objects/UIScene;->widgets:[Lcom/appfour/backbone/api/objects/UISceneWidget;

    return-void
.end method
