.class Labcd/gl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ml;->j6(Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Ljava/util/Hashtable;

.field final Hw:Ljava/lang/String;

.field final VH:Ljava/lang/String;

.field final Zo:Ljava/util/List;

.field final gn:Ljava/util/Map;

.field final u7:Labcd/ml;

.field final v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/gl;

    const-wide v2, -0x1374667f15b9aa4bL    # -7.433101803211034E214

    const-wide v4, -0x36a4062a3e4ac740L    # -2.495535268733797E45

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ml;Ljava/util/Hashtable;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8

    iput-object p1, p0, Labcd/gl;->u7:Labcd/ml;

    iput-object p2, p0, Labcd/gl;->FH:Ljava/util/Hashtable;

    iput-object p3, p0, Labcd/gl;->Hw:Ljava/lang/String;

    iput p4, p0, Labcd/gl;->v5:I

    iput-object p5, p0, Labcd/gl;->Zo:Ljava/util/List;

    iput-object p6, p0, Labcd/gl;->VH:Ljava/lang/String;

    iput-object p7, p0, Labcd/gl;->gn:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/gl;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5f6b3a2617cf8b8L
    .end annotation

    const-wide v6, 0x62ec5de593af2a00L

    :try_start_0
    sget-boolean v0, Labcd/gl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x62ec5de593af2a00L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/gl;->FH:Ljava/util/Hashtable;

    iget-object v1, p0, Labcd/gl;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Labcd/gl;->v5:I

    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Labcd/gl;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->cb()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    iget-object v1, p0, Labcd/gl;->VH:Ljava/lang/String;

    iget-object v2, p0, Labcd/gl;->FH:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Labcd/Xj;->j6(Ljava/lang/String;Ljava/util/Hashtable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/gl;->u7:Labcd/ml;

    iget-object v1, p0, Labcd/gl;->VH:Ljava/lang/String;

    iget-object v2, p0, Labcd/gl;->Zo:Ljava/util/List;

    iget-object v4, p0, Labcd/gl;->gn:Ljava/util/Map;

    iget-object v5, p0, Labcd/gl;->FH:Ljava/util/Hashtable;

    invoke-static/range {v0 .. v5}, Labcd/ml;->j6(Labcd/ml;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/gl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
