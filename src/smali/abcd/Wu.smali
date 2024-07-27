.class Labcd/Wu;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Xu;->j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:[Ljava/lang/Object;

.field final FH:Labcd/Xu;

.field final j6:Ljava/lang/Object;


# direct methods
.method constructor <init>(Labcd/Xu;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Labcd/Wu;->FH:Labcd/Xu;

    iput-object p2, p0, Labcd/Wu;->j6:Ljava/lang/Object;

    iput-object p3, p0, Labcd/Wu;->DW:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/appfour/backbone/api/objects/EventData;
    .registers 5

    iget-object v0, p0, Labcd/Wu;->FH:Labcd/Xu;

    iget-object v1, v0, Labcd/Xu;->DW:Lcom/appfour/backbone/api/closures/OnExceptionClosure0;

    iget-object v2, p0, Labcd/Wu;->j6:Ljava/lang/Object;

    iget-object v0, p0, Labcd/Wu;->DW:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v0}, Lcom/appfour/backbone/api/closures/OnExceptionClosure0;->getValue(Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
