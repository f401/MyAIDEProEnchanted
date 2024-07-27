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
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x11c3dc72bc6935d4L
    .end annotation

    const-wide v8, -0x1e35117e4925c699L    # -1.2116324719847652E163

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/EclipseJavaProjectConfig$Node;

    const-wide v2, -0xec8bea1b6243df8L    # -2.366134276704206E237

    const-wide v4, -0xec8bea1b6243df8L    # -2.366134276704206E237

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e35117e4925c699L    # -1.2116324719847652E163

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/EclipseJavaProjectConfig$Node;

    const-string v1, "con"

    const-string v2, "com.android.ide.eclipse.adt.ANDROID_FRAMEWORK"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Labcd/EclipseJavaProjectConfig$Node;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Labcd/EclipseJavaProjectConfig$Node;->j6:Labcd/EclipseJavaProjectConfig$Node;

    new-instance v0, Labcd/EclipseJavaProjectConfig$Node;

    const-string v1, "con"

    const-string v2, "com.android.ide.eclipse.adt.LIBRARIES"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Labcd/EclipseJavaProjectConfig$Node;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Labcd/EclipseJavaProjectConfig$Node;->DW:Labcd/EclipseJavaProjectConfig$Node;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    const-wide v8, -0x56b29851bbf4aa97L    # -9.781665716169942E-110

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x56b29851bbf4aa97L    # -9.781665716169942E-110

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Labcd/EclipseJavaProjectConfig$Node;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x5c429a433adfc020L    # 2.7042163166960606E136

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Labcd/EclipseJavaProjectConfig$Node;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x5c429a433adfc020L    # 2.7042163166960606E136

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0xe5b82733b156a19L    # -2.6685640187274493E239

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    iput-object p2, p0, Labcd/EclipseJavaProjectConfig$Node;->path:Ljava/lang/String;

    iput-boolean p3, p0, Labcd/EclipseJavaProjectConfig$Node;->VH:Z

    if-eqz p5, :cond_1

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

    iput-object v0, p0, Labcd/EclipseJavaProjectConfig$Node;->gn:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/EclipseJavaProjectConfig$Node;->gn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v0, :cond_2

    const-wide v2, -0xe5b82733b156a19L    # -2.6685640187274493E239

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v2, -0x162760023f047ce5L    # -7.539677101375214E201

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x162760023f047ce5L    # -7.539677101375214E201

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "con"

    iget-object v1, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.ide.eclipse.adt.ANDROID_FRAMEWORK"

    iget-object v1, p0, Labcd/EclipseJavaProjectConfig$Node;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public isLibEntry()Z
    .registers 5

    const-wide v2, 0x16c2214f101532a0L

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16c2214f101532a0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public isOutputEntry()Z
    .registers 5

    const-wide v2, -0x14b29480c95bf4e8L    # -7.556285358573227E208

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14b29480c95bf4e8L    # -7.556285358573227E208

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    const-string v1, "output"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public isSrcEntry()Z
    .registers 5

    const-wide v2, 0x16ceac07e6853395L    # 8.014102769226106E-199

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16ceac07e6853395L    # 8.014102769226106E-199

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    const-string v1, "src"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Labcd/EclipseJavaProjectConfig$Node;->v5()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x4827acd7c443ea50L

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4827acd7c443ea50L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/EclipseJavaProjectConfig$Node;->gn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v2, -0x229a5d3754896a68L    # -8.244843723870051E141

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x229a5d3754896a68L    # -8.244843723870051E141

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/EclipseJavaProjectConfig$Node;->path:Ljava/lang/String;

    invoke-static {p1, v0}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Z
    .registers 7

    const-wide v4, 0x364b2533151db1c3L    # 3.714715059290411E-47

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x364b2533151db1c3L    # 3.714715059290411E-47

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/EclipseJavaProjectConfig$Node;->kind:Ljava/lang/String;

    const-string v2, "src"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/EclipseJavaProjectConfig$Node;->path:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/EclipseJavaProjectConfig$Node;->path:Ljava/lang/String;

    const/16 v2, 0x2f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProjectConfig$Node;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
