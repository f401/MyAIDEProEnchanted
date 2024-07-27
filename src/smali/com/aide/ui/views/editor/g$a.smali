.class Lcom/aide/ui/views/editor/g$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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
.field public FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x4495283409a302f8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/hm;",
            ">;"
        }
    .end annotation
.end field

.field public Hw:Labcd/hm;
    .annotation runtime Labcd/ru;
        field = -0x2519200f3c78c530L
    .end annotation
.end field

.field public Zo:Z
    .annotation runtime Labcd/ru;
        field = -0x4b414597886be0dfL
    .end annotation
.end field

.field public v5:Lcom/aide/ui/views/editor/g$b;
    .annotation runtime Labcd/ru;
        field = 0x3442a4dd150e6777L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0xf1f9db31803437cL

    const-class v0, Lcom/aide/ui/views/editor/g$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xc624c7e9fd4a00L
    .end annotation

    const-wide v4, -0x2d38cb940b9a2440L    # -5.908619488942509E90

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d38cb940b9a2440L    # -5.908619488942509E90

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aide/ui/views/editor/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aide/ui/views/editor/g$b;-><init>(Lcom/aide/ui/views/editor/d;)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g$a;->v5:Lcom/aide/ui/views/editor/g$b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/ui/views/editor/d;)V
    .registers 8

    const-wide v4, -0x1849801220b95000L    # -4.009908276786703E191

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1849801220b95000L    # -4.009908276786703E191

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
