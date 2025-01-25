.class Labcd/Ku;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Vu;->onEnter(JJLcom/appfour/backbone/api/closures/OnEnterClosure0;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Lcom/appfour/backbone/api/closures/OnEnterClosure0;

.field final FH:Labcd/Vu;

.field final j6:J


# direct methods
.method constructor <init>(Labcd/Vu;JLcom/appfour/backbone/api/closures/OnEnterClosure0;)V
    .registers 5

    iput-object p1, p0, Labcd/Ku;->FH:Labcd/Vu;

    iput-wide p2, p0, Labcd/Ku;->j6:J

    iput-object p4, p0, Labcd/Ku;->DW:Lcom/appfour/backbone/api/closures/OnEnterClosure0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 4

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-wide v0, p0, Labcd/Ku;->j6:J

    invoke-static {p1, v0, v1}, Labcd/Ev;->j6(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Labcd/Mv;->XL()Labcd/Mv;

    move-result-object v0

    new-instance v1, Labcd/Ju;

    invoke-direct {v1, p0, p1}, Labcd/Ju;-><init>(Labcd/Ku;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Labcd/lv;->j6(Ljava/lang/Object;Labcd/lv$a;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object p1

    return-object p1
.end method
