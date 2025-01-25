.class Labcd/Tu;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Uu;->j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:[Ljava/lang/Object;

.field final FH:Labcd/Uu;

.field final j6:Ljava/lang/Object;


# direct methods
.method constructor <init>(Labcd/Uu;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Labcd/Tu;->FH:Labcd/Uu;

    iput-object p2, p0, Labcd/Tu;->j6:Ljava/lang/Object;

    iput-object p3, p0, Labcd/Tu;->DW:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/appfour/backbone/api/objects/EventData;
    .registers 9

    iget-object v0, p0, Labcd/Tu;->FH:Labcd/Uu;

    iget-object v1, v0, Labcd/Uu;->DW:Lcom/appfour/backbone/api/closures/OnEnterClosure5;

    iget-object v2, p0, Labcd/Tu;->j6:Ljava/lang/Object;

    iget-object v0, p0, Labcd/Tu;->DW:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    const/4 v5, 0x3

    aget-object v5, v0, v5

    const/4 v6, 0x4

    aget-object v6, v0, v6

    const/4 v7, 0x5

    aget-object v7, v0, v7

    invoke-interface/range {v1 .. v7}, Lcom/appfour/backbone/api/closures/OnEnterClosure5;->getValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
