.class Labcd/Ju;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ku;->j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Ku;

.field final j6:Ljava/lang/Object;


# direct methods
.method constructor <init>(Labcd/Ku;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Labcd/Ju;->DW:Labcd/Ku;

    iput-object p2, p0, Labcd/Ju;->j6:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/appfour/backbone/api/objects/EventData;
    .registers 3

    iget-object v0, p0, Labcd/Ju;->DW:Labcd/Ku;

    iget-object v0, v0, Labcd/Ku;->DW:Lcom/appfour/backbone/api/closures/OnEnterClosure0;

    iget-object v1, p0, Labcd/Ju;->j6:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/appfour/backbone/api/closures/OnEnterClosure0;->getValue(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
