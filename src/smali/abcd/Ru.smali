.class Labcd/Ru;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Su;->j6([Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:[Ljava/lang/Object;

.field final FH:Labcd/Su;

.field final j6:Ljava/lang/Object;


# direct methods
.method constructor <init>(Labcd/Su;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Labcd/Ru;->FH:Labcd/Su;

    iput-object p2, p0, Labcd/Ru;->j6:Ljava/lang/Object;

    iput-object p3, p0, Labcd/Ru;->DW:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/appfour/backbone/api/objects/EventData;
    .registers 8

    iget-object v0, p0, Labcd/Ru;->FH:Labcd/Su;

    iget-object v0, v0, Labcd/Su;->DW:Lcom/appfour/backbone/api/closures/OnEnterClosure4;

    iget-object v1, p0, Labcd/Ru;->j6:Ljava/lang/Object;

    iget-object v5, p0, Labcd/Ru;->DW:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v2, v5, v2

    const/4 v3, 0x2

    aget-object v3, v5, v3

    const/4 v4, 0x3

    aget-object v4, v5, v4

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/appfour/backbone/api/closures/OnEnterClosure4;->getValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    move-result-object v0

    return-object v0
.end method
