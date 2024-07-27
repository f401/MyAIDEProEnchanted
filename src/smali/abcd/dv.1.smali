.class Labcd/dv;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ev;->j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:[Ljava/lang/Object;

.field final FH:Labcd/ev;

.field final j6:Ljava/lang/Object;


# direct methods
.method constructor <init>(Labcd/ev;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Labcd/dv;->FH:Labcd/ev;

    iput-object p2, p0, Labcd/dv;->j6:Ljava/lang/Object;

    iput-object p3, p0, Labcd/dv;->DW:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/appfour/backbone/api/objects/EventData;
    .registers 9

    iget-object v0, p0, Labcd/dv;->FH:Labcd/ev;

    iget-object v0, v0, Labcd/ev;->DW:Lcom/appfour/backbone/api/closures/OnExceptionClosure4;

    iget-object v1, p0, Labcd/dv;->j6:Ljava/lang/Object;

    iget-object v6, p0, Labcd/dv;->DW:[Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v2, v6, v2

    const/4 v3, 0x3

    aget-object v3, v6, v3

    const/4 v4, 0x4

    aget-object v4, v6, v4

    const/4 v5, 0x5

    aget-object v5, v6, v5

    const/4 v7, 0x1

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Throwable;

    invoke-interface/range {v0 .. v6}, Lcom/appfour/backbone/api/closures/OnExceptionClosure4;->getValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
