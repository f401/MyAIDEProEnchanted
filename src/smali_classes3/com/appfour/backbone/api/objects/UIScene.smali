.class public Lcom/appfour/backbone/api/objects/UIScene;
.super Ljava/lang/Object;


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
    .registers 11

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

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    :goto_1b
    array-length p3, p10

    if-ge p2, p3, :cond_30

    aget-object p3, p10, p2

    if-eqz p3, :cond_2d

    iget p4, p3, Lcom/appfour/backbone/api/objects/UISceneWidget;->width:I

    if-lez p4, :cond_2d

    iget p4, p3, Lcom/appfour/backbone/api/objects/UISceneWidget;->height:I

    if-lez p4, :cond_2d

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :cond_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    iput-object p1, p0, Lcom/appfour/backbone/api/objects/UIScene;->widgets:[Lcom/appfour/backbone/api/objects/UISceneWidget;

    return-void
.end method
