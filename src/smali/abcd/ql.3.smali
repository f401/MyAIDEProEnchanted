.class Labcd/ql;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/sl;->j6(Ljava/lang/String;JIILcom/aide/engine/SourceEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Lcom/aide/engine/SourceEntity;

.field final Hw:Ljava/lang/String;

.field final VH:Labcd/sl;

.field final Zo:I

.field final v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/ql;

    const-wide v2, -0x5917a8cc0b184c5L

    const-wide v4, 0x3a054b0f13235e4L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/sl;Lcom/aide/engine/SourceEntity;Ljava/lang/String;II)V
    .registers 6

    iput-object p1, p0, Labcd/ql;->VH:Labcd/sl;

    iput-object p2, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    iput-object p3, p0, Labcd/ql;->Hw:Ljava/lang/String;

    iput p4, p0, Labcd/ql;->v5:I

    iput p5, p0, Labcd/ql;->Zo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x23db41238c9233fdL
    .end annotation

    const-wide v8, 0x36a4d48e89ba7e50L    # 1.824341708849764E-45

    :try_start_0
    sget-boolean v0, Labcd/ql;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x36a4d48e89ba7e50L    # 1.824341708849764E-45

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Hw()V

    iget-object v0, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v0, v0, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v0}, Labcd/ul;->v5(Labcd/ul;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/activities/o;->we()Lcom/aide/ui/activities/o;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/aide/common/b;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v0, v0, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v0}, Labcd/ul;->Zo(Labcd/ul;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->QX()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->DW()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v0, v0, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v0}, Labcd/ul;->VH(Labcd/ul;)V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    iget-object v1, p0, Labcd/ql;->Hw:Ljava/lang/String;

    iget v2, p0, Labcd/ql;->v5:I

    iget v3, p0, Labcd/ql;->Zo:I

    iget-object v4, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v4, v4, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v4}, Labcd/ul;->gn(Labcd/ul;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Labcd/Xj;->j6(Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ql;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v6

    new-instance v0, Labcd/Tl;

    iget-object v1, p0, Labcd/ql;->Hw:Ljava/lang/String;

    iget-object v2, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v2, v2, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v2}, Labcd/ul;->u7(Labcd/ul;)I

    move-result v2

    iget-object v3, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v3, v3, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v3}, Labcd/ul;->tp(Labcd/ul;)I

    move-result v3

    iget-object v4, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v4, v4, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v4}, Labcd/ul;->EQ(Labcd/ul;)I

    move-result v4

    iget-object v5, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v5, v5, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v5}, Labcd/ul;->j6(Labcd/ul;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v6, v0}, Labcd/Ak;->j6(Labcd/Tl;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v6

    new-instance v0, Labcd/Tl;

    iget-object v1, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v1}, Lcom/aide/engine/SourceEntity;->DW()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->u7()I

    move-result v2

    iget-object v3, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->tp()I

    move-result v3

    iget-object v4, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v4}, Lcom/aide/engine/SourceEntity;->u7()I

    move-result v4

    iget-object v5, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v5}, Lcom/aide/engine/SourceEntity;->gn()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v6, v0}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
