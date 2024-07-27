.class Labcd/Nu;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ou;->j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:[Ljava/lang/Object;

.field final FH:Labcd/Ou;

.field final j6:Ljava/lang/Object;


# direct methods
.method constructor <init>(Labcd/Ou;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Labcd/Nu;->FH:Labcd/Ou;

    iput-object p2, p0, Labcd/Nu;->j6:Ljava/lang/Object;

    iput-object p3, p0, Labcd/Nu;->DW:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/appfour/backbone/api/objects/EventData;
    .registers 6

    iget-object v0, p0, Labcd/Nu;->FH:Labcd/Ou;

    iget-object v0, v0, Labcd/Ou;->DW:Lcom/appfour/backbone/api/closures/OnEnterClosure2;

    iget-object v1, p0, Labcd/Nu;->j6:Ljava/lang/Object;

    iget-object v2, p0, Labcd/Nu;->DW:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-interface {v0, v1, v3, v2}, Lcom/appfour/backbone/api/closures/OnEnterClosure2;->getValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
