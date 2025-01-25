.class Lcom/aide/ui/views/CodeEditText$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Xl;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/CodeEditText$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field private FH:Lcom/aide/ui/views/editor/OEditor$c;
    .annotation runtime Labcd/ru;
        field = -0x50fa856b8f783231L
    .end annotation
.end field

.field private Hw:Lcom/aide/common/u;
    .annotation runtime Labcd/ru;
        field = 0x493c2cef6988a9L
    .end annotation
.end field

.field final VH:Lcom/aide/ui/views/CodeEditText$c;

.field private Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x87fcff05cd62c14L
    .end annotation
.end field

.field private v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1f4e1c5a23bc3f64L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/CodeEditText$c$a;

    const-wide v1, -0xa9e28a891e1e9b0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditText$c;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/ui/views/editor/OEditor$c;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x6af59f3d0f008f60L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$c$a;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x2410b2246645305fL  # 5.742631533690505E-135

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-object p1, p0, Lcom/aide/ui/views/CodeEditText$c$a;->VH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$c$a;->Zo:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/ui/views/CodeEditText$c$a;->v5:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/views/CodeEditText$c$a;->Hw:Lcom/aide/common/u;

    iput-object p4, p0, Lcom/aide/ui/views/CodeEditText$c$a;->FH:Lcom/aide/ui/views/editor/OEditor$c;
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$c$a;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x2410b2246645305fL  # 5.742631533690505E-135

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method


# virtual methods
.method public FH()Lcom/aide/common/u;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2a2f8b0691f9d2f8L
    .end annotation

    const-wide v0, 0x52635ac1ef14b120L  # 7.70036269545995E88

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c$a;->Hw:Lcom/aide/common/u;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2e8c65d6c9cca1b5L
    .end annotation

    const-wide v0, -0x13e87269d434c7e1L  # -4.9556945275550095E212

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c$a;->v5:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public isEnabled()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4e7d8c3f64ec6edL
    .end annotation

    const-wide v0, 0x1b742685e33d107fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c$a;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public run()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x12f9d659a5e789a3L
    .end annotation

    const-wide v0, -0x648f0f831cb804fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$c$a;->VH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$c$a;->FH:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/aide/ui/views/editor/c;->j6()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    const/4 v0, 0x1

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c$a;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public v5()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd085fc0f5974371L
    .end annotation

    const-wide v0, -0x80335dd8173ac4dL  # -9.505863961691856E269

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$c$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$c$a;->Zo:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$c$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
