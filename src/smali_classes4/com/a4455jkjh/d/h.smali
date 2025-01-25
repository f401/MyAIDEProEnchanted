.class Lcom/a4455jkjh/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/a4455jkjh/d/c;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Lcom/aide/ui/build/android/X;

.field private final i:[Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:[Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Z

.field private final r:Z


# direct methods
.method constructor <init>(Lcom/a4455jkjh/d/c;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aide/ui/build/android/X;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 20

    iput-object p1, p0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    iput-object p2, p0, Lcom/a4455jkjh/d/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/a4455jkjh/d/h;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/a4455jkjh/d/h;->d:[Ljava/lang/String;

    iput-object p5, p0, Lcom/a4455jkjh/d/h;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/a4455jkjh/d/h;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/a4455jkjh/d/h;->g:Z

    iput-object p8, p0, Lcom/a4455jkjh/d/h;->h:Lcom/aide/ui/build/android/X;

    iput-object p9, p0, Lcom/a4455jkjh/d/h;->i:[Ljava/lang/String;

    iput-object p10, p0, Lcom/a4455jkjh/d/h;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/a4455jkjh/d/h;->k:[Ljava/lang/String;

    iput-object p12, p0, Lcom/a4455jkjh/d/h;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/a4455jkjh/d/h;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/a4455jkjh/d/h;->n:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/a4455jkjh/d/h;->o:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/a4455jkjh/d/h;->p:Ljava/lang/String;

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/a4455jkjh/d/h;->q:Z

    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/a4455jkjh/d/h;->r:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public proguard()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a4455jkjh/d/h;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a4455jkjh/d/h;->c:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a4455jkjh/d/h;->d:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/a4455jkjh/d/h;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a4455jkjh/d/h;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/a4455jkjh/d/h;->g:Z

    move/from16 v16, v0

    invoke-static {}, Lcom/a4455jkjh/d/a;->a()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {}, La/j/l;->b()V

    :try_start_23
    new-instance v1, Lcom/a4455jkjh/d/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    invoke-direct {v1, v7, v2}, Lcom/a4455jkjh/d/a;-><init>(Ljava/lang/String;Lcom/aide/ui/build/android/E;)V

    invoke-virtual {v1, v3, v6, v4}, Lcom/a4455jkjh/d/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v1, v0, v8}, Lcom/a4455jkjh/d/a;->a(ZLjava/lang/String;)Lcom/a4455jkjh/d/b;

    move-result-object v1

    iget-object v3, v1, Lcom/a4455jkjh/d/b;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/a4455jkjh/d/b;->c:[Ljava/lang/String;

    iget-object v8, v1, Lcom/a4455jkjh/d/b;->d:Ljava/lang/String;

    iget-object v6, v1, Lcom/a4455jkjh/d/b;->a:[Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3d} :catch_7c
    .catchall {:try_start_23 .. :try_end_3d} :catchall_8f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    invoke-static {v1, v7}, Lcom/a4455jkjh/d/c;->a(Lcom/a4455jkjh/d/c;Ljava/lang/String;)V

    :cond_44
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a4455jkjh/d/h;->h:Lcom/aide/ui/build/android/X;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a4455jkjh/d/h;->i:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a4455jkjh/d/h;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a4455jkjh/d/h;->k:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a4455jkjh/d/h;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/a4455jkjh/d/h;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/a4455jkjh/d/h;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/a4455jkjh/d/h;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/a4455jkjh/d/h;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/a4455jkjh/d/h;->q:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/a4455jkjh/d/h;->r:Z

    move/from16 v18, v0

    invoke-static/range {v1 .. v18}, Lcom/a4455jkjh/d/c;->a(Lcom/a4455jkjh/d/c;Lcom/aide/ui/build/android/X;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    :goto_7b
    return-void

    :catch_7c
    move-exception v1

    :try_start_7d
    invoke-static {v1}, Lcom/aide/common/AIDELog;->e2(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    invoke-virtual {v1}, Lcom/a4455jkjh/d/c;->DW()V
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_8f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    invoke-static {v1, v7}, Lcom/a4455jkjh/d/c;->a(Lcom/a4455jkjh/d/c;Ljava/lang/String;)V

    goto :goto_7b

    :catchall_8f
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    invoke-static {v2, v7}, Lcom/a4455jkjh/d/c;->a(Lcom/a4455jkjh/d/c;Ljava/lang/String;)V

    throw v1
.end method

.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    :try_start_3
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableResGuard()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v3, p0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_12} :catch_78

    move-result v1

    if-eqz v1, :cond_62

    const-string v1, "混淆Res资源..."

    :goto_17
    :try_start_17
    invoke-static {v3, v1}, Lcom/s1243808733/aide/util/AIDEUtils;->updateBuild(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/s1243808733/aide/util/AndResGuard;->proguard(Ljava/io/File;)V

    :cond_1d
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableStringFog()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v3, p0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_28} :catch_78

    move-result v1

    if-eqz v1, :cond_65

    const-string v1, "加密Dex字符串..."

    :goto_2d
    :try_start_2d
    invoke-static {v3, v1}, Lcom/s1243808733/aide/util/AIDEUtils;->updateBuild(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/s1243808733/aide/util/StringFog;->doFog(Ljava/io/File;)V

    :cond_33
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isObfuscationAsm()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v3, p0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_3e} :catch_78

    move-result v1

    if-eqz v1, :cond_68

    const-string v1, "扁平化混淆..."

    :goto_43
    :try_start_43
    invoke-static {v3, v1}, Lcom/s1243808733/aide/util/AIDEUtils;->updateBuild(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/FR1ENDS/tools/asm/Obfuscate;->Obfuscate(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_49} :catch_78

    :cond_49
    :goto_49
    if-nez v0, :cond_6e

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isUseProguard()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v1, p0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "混淆Dex..."

    :goto_5b
    invoke-static {v1, v0}, Lcom/s1243808733/aide/util/AIDEUtils;->updateBuild(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5e
    invoke-virtual {p0}, Lcom/a4455jkjh/d/h;->proguard()V

    :goto_61
    return-void

    .line 99
    :cond_62
    const-string v1, "Obfuscating Res resources..."

    goto :goto_17

    :cond_65
    const-string v1, "Encrypted Dex string..."

    goto :goto_2d

    :cond_68
    const-string v1, "Obfuscating Code..."

    goto :goto_43

    :cond_6b
    const-string v0, "Confused Dex..."

    goto :goto_5b

    :cond_6e
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a4455jkjh/d/h;->a:Lcom/a4455jkjh/d/c;

    invoke-virtual {v1, v0}, Lcom/a4455jkjh/d/c;->onCallback(Ljava/lang/String;)V

    goto :goto_61

    :catch_78
    move-exception v0

    goto :goto_49
.end method
