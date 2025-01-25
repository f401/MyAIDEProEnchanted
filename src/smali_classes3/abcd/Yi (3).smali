.class final Labcd/Yi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Zi;->j6(Ljava/lang/String;Lcom/aide/common/ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
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
.field final FH:Ljava/lang/String;

.field final Hw:Lcom/aide/common/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xa7d87b311cbd940L

    const-wide v2, -0x17f9aeca5446bf48L  # -1.272762684140596E193

    const-class v4, Labcd/Yi;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 3

    iput-object p1, p0, Labcd/Yi;->FH:Ljava/lang/String;

    iput-object p2, p0, Labcd/Yi;->Hw:Lcom/aide/common/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/Yi;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2327bc4c9d1cc32fL
    .end annotation

    const-string v0, ".xml"

    const-wide v1, 0x23690d81db06bb70L  # 4.207533897386531E-138

    :try_start_7
    sget-boolean v3, Labcd/Yi;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_74

    :cond_e
    :try_start_e
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Labcd/Yi;->FH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "layout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_46} :catch_69
    .catchall {:try_start_e .. :try_end_46} :catchall_74

    if-eqz v3, :cond_4b

    const-string v3, "<LinearLayout xmlns:android=\"http://schemas.android.com/apk/res/android\"\n    android:layout_width=\"fill_parent\"\n    android:layout_height=\"fill_parent\"\n    android:orientation=\"vertical\">\n    \n</LinearLayout>\n"

    goto :goto_60

    :cond_4b
    :try_start_4b
    invoke-static {v0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "menu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_59} :catch_69
    .catchall {:try_start_4b .. :try_end_59} :catchall_74

    if-eqz v3, :cond_5e

    const-string v3, "<menu xmlns:android=\"http://schemas.android.com/apk/res/android\">\n    \n    <item\n        android:id=\"@+id/item\"\n        android:title=\"Item\"/>\n    \n</menu>\n"

    goto :goto_60

    :cond_5e
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    :goto_60
    :try_start_60
    invoke-static {v0, v3}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Labcd/Yi;->Hw:Lcom/aide/common/ab;

    invoke-interface {v3, v0}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_68} :catch_69
    .catchall {:try_start_60 .. :try_end_68} :catchall_74

    goto :goto_73

    :catch_69
    move-exception v0

    :try_start_6a
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Add Xml"

    invoke-static {v3, v4, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_74

    :goto_73
    return-void

    :catchall_74
    move-exception v0

    sget-boolean v3, Labcd/Yi;->DW:Z

    if-eqz v3, :cond_7c

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7c
    throw v0
.end method
