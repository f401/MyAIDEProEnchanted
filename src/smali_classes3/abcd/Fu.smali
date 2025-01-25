.class Labcd/Fu;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Iu;->onUpdate(Lcom/appfour/backbone/api/closures/OnVoidClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Iu;

.field final j6:Lcom/appfour/backbone/api/closures/OnVoidClosure;


# direct methods
.method constructor <init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnVoidClosure;)V
    .registers 3

    iput-object p1, p0, Labcd/Fu;->DW:Labcd/Iu;

    iput-object p2, p0, Labcd/Fu;->j6:Lcom/appfour/backbone/api/closures/OnVoidClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 2

    iget-object p1, p0, Labcd/Fu;->j6:Lcom/appfour/backbone/api/closures/OnVoidClosure;

    invoke-interface {p1}, Lcom/appfour/backbone/api/closures/OnVoidClosure;->getValue()Lcom/appfour/backbone/api/objects/EventData;

    move-result-object p1

    return-object p1
.end method
