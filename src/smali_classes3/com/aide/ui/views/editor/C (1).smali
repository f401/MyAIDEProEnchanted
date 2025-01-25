.class Lcom/aide/ui/views/editor/C;
.super Lcom/aide/ui/views/editor/i;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/editor/OConsole;->a8()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final gn:Lcom/aide/ui/views/editor/OConsole;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x3a3a72a9f2dfbf3L

    const-wide v2, 0x301ee7500e1afda9L  # 6.672209970781637E-77

    const-class v4, Lcom/aide/ui/views/editor/C;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OConsole;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/C;->gn:Lcom/aide/ui/views/editor/OConsole;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/i;-><init>()V

    return-void
.end method


# virtual methods
.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x31717fa6b3528e84L
    .end annotation

    const-wide v0, -0x51119112f65b05f3L  # -1.2532574966182164E-82

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/C;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/C;->gn:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->Zo()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/C;->VH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method
