.class Labcd/_u;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/av;->j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:[Ljava/lang/Object;

.field final FH:Labcd/av;

.field final j6:Ljava/lang/Object;


# direct methods
.method constructor <init>(Labcd/av;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Labcd/_u;->FH:Labcd/av;

    iput-object p2, p0, Labcd/_u;->j6:Ljava/lang/Object;

    iput-object p3, p0, Labcd/_u;->DW:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/appfour/backbone/api/objects/EventData;
    .registers 7

    iget-object v0, p0, Labcd/_u;->FH:Labcd/av;

    iget-object v0, v0, Labcd/av;->DW:Lcom/appfour/backbone/api/closures/OnExceptionClosure2;

    iget-object v1, p0, Labcd/_u;->j6:Ljava/lang/Object;

    iget-object v2, p0, Labcd/_u;->DW:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v4, 0x3

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/appfour/backbone/api/closures/OnExceptionClosure2;->getValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
