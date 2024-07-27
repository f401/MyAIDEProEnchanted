.class Labcd/Xu;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/hv;->onExceptionIn(JJLjava/lang/Class;JLcom/appfour/backbone/api/closures/OnExceptionClosure0;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Lcom/appfour/backbone/api/closures/OnExceptionClosure0;

.field final FH:Labcd/hv;

.field final j6:J


# direct methods
.method constructor <init>(Labcd/hv;JLcom/appfour/backbone/api/closures/OnExceptionClosure0;)V
    .registers 5

    iput-object p1, p0, Labcd/Xu;->FH:Labcd/hv;

    iput-wide p2, p0, Labcd/Xu;->j6:J

    iput-object p4, p0, Labcd/Xu;->DW:Lcom/appfour/backbone/api/closures/OnExceptionClosure0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 6

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-wide v2, p0, Labcd/Xu;->j6:J

    invoke-static {v0, v2, v3}, Labcd/Ev;->j6(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Labcd/Mv;->XL()Labcd/Mv;

    move-result-object v1

    new-instance v2, Labcd/Wu;

    invoke-direct {v2, p0, v0, p1}, Labcd/Wu;-><init>(Labcd/Xu;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Labcd/lv;->j6(Ljava/lang/Object;Labcd/lv$a;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
