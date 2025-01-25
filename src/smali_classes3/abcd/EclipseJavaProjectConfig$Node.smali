.class public Labcd/EclipseJavaProjectConfig$Node;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/EclipseJavaProjectConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# static fields
.field public static DW:Labcd/EclipseJavaProjectConfig$Node;

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static j6:Labcd/EclipseJavaProjectConfig$Node;


# instance fields
.field public VH:Z

.field public gn:Ljava/lang/String;

.field public kind:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x11c3dc72bc6935d4L
    .end annotation

    const-string v0, "con"

    const/4 v1, 0x0

    const-wide v2, -0x1e35117e4925c699L  # -1.2116324719847652E163

    :try_start_8
    const-class v4, Labcd/EclipseJavaProjectConfig$Node;

    const-wide v5, -0xec8bea1b6243df8L  # -2.366134276704206E237

    invoke-static {v4, v5, v6, v5, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v4, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v4, :cond_19

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_19
    new-instance v4, Labcd/EclipseJavaProjectConfig$Node;

    const-string v5, "com.android.ide.eclipse.adt.ANDROID_FRAMEWORK"

    const/4 v6, 0x0

    invoke-direct {v4, v0, v5, v6}, Labcd/EclipseJavaProjectConfig$Node;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v4, Labcd/EclipseJavaProjectConfig$Node;->j6:Labcd/EclipseJavaProjectConfig$Node;

    new-instance v4, Labcd/EclipseJavaProjectConfig$Node;

    const-string v5, "com.android.ide.eclipse.adt.LIBRARIES"

    invoke-direct {v4, v0, v5, v6}, Labcd/EclipseJavaProjectConfig$Node;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v4, Labcd/EclipseJavaProjectConfig$Node;->DW:Labcd/EclipseJavaProjectConfig$Node;
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v4, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v4, :cond_35

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x56b29851bbf4aa97L  # -9.781665716169942E-110

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Labcd/EclipseJavaProjectConfig$Node;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v1, :cond_34

    const-wide v2, -0x56b29851bbf4aa97L  # -9.781665716169942E-110

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x5c429a433adfc020L  # 2.7042163166960606E136

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Labcd/EclipseJavaProjectConfig$Node;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0x5c429a433adfc020L  # 2.7042163166960606E136

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_1e

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0xe5b82733b156a19L  # -2.6685640187274493E239

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    iput-object p2, p0, Labcd/EclipseJavaProjectConfig$Node;->path:Ljava/lang/String;

    iput-boolean p3, p0, Labcd/EclipseJavaProjectConfig$Node;->VH:Z

    if-eqz p5, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_46
    iput-object v0, p0, Labcd/EclipseJavaProjectConfig$Node;->gn:Ljava/lang/String;

    goto :goto_4e

    :cond_49
    invoke-static {p2}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4f

    goto :goto_46

    :goto_4e
    return-void

    :catchall_4f
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v1, :cond_6f

    const-wide v2, -0xe5b82733b156a19L  # -2.6685640187274493E239

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    goto :goto_71

    :goto_70
    throw v0

    :goto_71
    goto :goto_70
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v0, -0x162760023f047ce5L  # -7.539677101375214E201

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "con"

    iget-object v3, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "com.android.ide.eclipse.adt.ANDROID_FRAMEWORK"

    iget-object v3, p0, Labcd/EclipseJavaProjectConfig$Node;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_24

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public isLibEntry()Z
    .registers 5

    const-wide v0, 0x16c2214f101532a0L

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public isOutputEntry()Z
    .registers 5

    const-wide v0, -0x14b29480c95bf4e8L  # -7.556285358573227E208

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    const-string v3, "output"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public isSrcEntry()Z
    .registers 5

    const-wide v0, 0x16ceac07e6853395L  # 8.014102769226106E-199

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    const-string v3, "src"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Labcd/EclipseJavaProjectConfig$Node;->v5()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x4827acd7c443ea50L

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/EclipseJavaProjectConfig$Node;->gn:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x229a5d3754896a68L  # -8.244843723870051E141

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/EclipseJavaProjectConfig$Node;->path:Ljava/lang/String;

    invoke-static {p1, v2}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public v5()Z
    .registers 6

    const-wide v0, 0x364b2533151db1c3L  # 3.714715059290411E-47

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    const-string v3, "src"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/EclipseJavaProjectConfig$Node;->path:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Labcd/EclipseJavaProjectConfig$Node;->path:Ljava/lang/String;

    const/16 v3, 0x2f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2f

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    return v4

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method
