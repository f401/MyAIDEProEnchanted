.class Labcd/Bu;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/jv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Iu;->onCrash(Lcom/appfour/backbone/api/closures/OnCrashClosure;)Lcom/appfour/backbone/api/define/DefineHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Iu;

.field final j6:Lcom/appfour/backbone/api/closures/OnCrashClosure;


# direct methods
.method constructor <init>(Labcd/Iu;Lcom/appfour/backbone/api/closures/OnCrashClosure;)V
    .registers 3

    iput-object p1, p0, Labcd/Bu;->DW:Labcd/Iu;

    iput-object p2, p0, Labcd/Bu;->j6:Lcom/appfour/backbone/api/closures/OnCrashClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 5

    iget-object v2, p0, Labcd/Bu;->j6:Lcom/appfour/backbone/api/closures/OnCrashClosure;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v2, v0, v1}, Lcom/appfour/backbone/api/closures/OnCrashClosure;->getValue(Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
