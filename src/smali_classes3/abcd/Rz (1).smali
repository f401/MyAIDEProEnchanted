.class public Labcd/Rz;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Qz;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Landroid/content/Context;

.field private final j6:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_11

    iput-object p1, p0, Labcd/Rz;->FH:Landroid/content/Context;

    iput-object p2, p0, Labcd/Rz;->DW:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Labcd/Rz;->j6:Landroid/content/SharedPreferences;

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot get directory before context has been set. Call Fabric.with() first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lio/fabric/sdk/android/Kit;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Labcd/Rz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Labcd/Rz;->j6:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public get()Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Labcd/Rz;->j6:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public j6(Landroid/content/SharedPreferences$Editor;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_b
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
