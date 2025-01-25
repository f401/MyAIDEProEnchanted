.class public Lcom/aide/ui/build/android/C;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/C;

    const-wide v1, -0x11717b30836d23b7L  # -3.5301577429558153E224

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xfef9310b21dbc1L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/C;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/C;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/C;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x1274a658a363ccc4L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_39

    :try_start_19
    const-string v1, "/** Automatically generated file. DO NOT MODIFY */\npackage $0;\n\npublic final class BuildConfig {\n    public final static boolean DEBUG = $1;\n}"

    const-string v2, "$0"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 v2, p2, 0x1

    const-string v3, "$1"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_34

    :try_start_30
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/C;->DW:Z

    if-eqz v1, :cond_4f

    const-wide v2, -0x1274a658a363ccc4L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method
