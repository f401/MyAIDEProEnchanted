.class Labcd/fv;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gv;->j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:[Ljava/lang/Object;

.field final FH:Labcd/gv;

.field final j6:Ljava/lang/Object;


# direct methods
.method constructor <init>(Labcd/gv;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Labcd/fv;->FH:Labcd/gv;

    iput-object p2, p0, Labcd/fv;->j6:Ljava/lang/Object;

    iput-object p3, p0, Labcd/fv;->DW:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/appfour/backbone/api/objects/EventData;
    .registers 10

    iget-object v0, p0, Labcd/fv;->FH:Labcd/gv;

    iget-object v1, v0, Labcd/gv;->DW:Lcom/appfour/backbone/api/closures/OnExceptionClosure5;

    iget-object v2, p0, Labcd/fv;->j6:Ljava/lang/Object;

    iget-object v0, p0, Labcd/fv;->DW:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    const/4 v5, 0x4

    aget-object v5, v0, v5

    const/4 v6, 0x5

    aget-object v6, v0, v6

    const/4 v7, 0x6

    aget-object v7, v0, v7

    const/4 v8, 0x1

    aget-object v0, v0, v8

    move-object v8, v0

    check-cast v8, Ljava/lang/Throwable;

    invoke-interface/range {v1 .. v8}, Lcom/appfour/backbone/api/closures/OnExceptionClosure5;->getValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
