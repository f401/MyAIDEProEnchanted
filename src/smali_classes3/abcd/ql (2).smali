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
    .registers 5

    const-wide v0, -0x5917a8cc0b184c5L

    const-wide v2, 0x3a054b0f13235e4L

    const-class v4, Labcd/ql;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x36a4d48e89ba7e50L  # 1.824341708849764E-45

    :try_start_5
    sget-boolean v2, Labcd/ql;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Hw()V

    iget-object v2, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v2, v2, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v2}, Labcd/ul;->v5(Labcd/ul;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->VH()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/activities/o;->we()Lcom/aide/ui/activities/o;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/aide/common/b;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d1

    :cond_3f
    iget-object v2, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v2, v2, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v2}, Labcd/ul;->Zo(Labcd/ul;)Z

    move-result v2

    if-nez v2, :cond_b5

    iget-object v2, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->QX()Z

    move-result v2

    if-nez v2, :cond_b5

    iget-object v2, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->DW()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5a

    goto :goto_b5

    :cond_5a
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v2

    new-instance v9, Labcd/Tl;

    iget-object v4, p0, Labcd/ql;->Hw:Ljava/lang/String;

    iget-object v3, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v3, v3, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v3}, Labcd/ul;->u7(Labcd/ul;)I

    move-result v5

    iget-object v3, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v3, v3, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v3}, Labcd/ul;->tp(Labcd/ul;)I

    move-result v6

    iget-object v3, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v3, v3, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v3}, Labcd/ul;->EQ(Labcd/ul;)I

    move-result v7

    iget-object v3, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v3, v3, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v3}, Labcd/ul;->j6(Labcd/ul;)I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v2, v9}, Labcd/Ak;->j6(Labcd/Tl;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v9, Labcd/Tl;

    iget-object v3, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->DW()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->u7()I

    move-result v5

    iget-object v3, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->tp()I

    move-result v6

    iget-object v3, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->u7()I

    move-result v7

    iget-object v3, p0, Labcd/ql;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->gn()I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v2, v9}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V

    goto :goto_d1

    :cond_b5
    :goto_b5
    iget-object v2, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v2, v2, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v2}, Labcd/ul;->VH(Labcd/ul;)V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    iget-object v3, p0, Labcd/ql;->Hw:Ljava/lang/String;

    iget v4, p0, Labcd/ql;->v5:I

    iget v5, p0, Labcd/ql;->Zo:I

    iget-object v6, p0, Labcd/ql;->VH:Labcd/sl;

    iget-object v6, v6, Labcd/sl;->v5:Labcd/ul;

    invoke-static {v6}, Labcd/ul;->gn(Labcd/ul;)Z

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Labcd/Xj;->j6(Ljava/lang/String;IIZ)V
    :try_end_d1
    .catchall {:try_start_5 .. :try_end_d1} :catchall_d2

    :goto_d1
    return-void

    :catchall_d2
    move-exception v2

    sget-boolean v3, Labcd/ql;->DW:Z

    if-eqz v3, :cond_da

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_da
    throw v2
.end method
