.class Lnet/f401/aide/PreferencePlaceHolder$100000000;
.super Ljava/lang/Object;
.source "PreferencePlaceHolder.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/f401/aide/PreferencePlaceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lnet/f401/aide/PreferencePlaceHolder;


# direct methods
.method constructor <init>(Lnet/f401/aide/PreferencePlaceHolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/PreferencePlaceHolder$100000000;->this$0:Lnet/f401/aide/PreferencePlaceHolder;

    return-void
.end method

.method static access$0(Lnet/f401/aide/PreferencePlaceHolder$100000000;)Lnet/f401/aide/PreferencePlaceHolder;
    .registers 2

    iget-object v0, p0, Lnet/f401/aide/PreferencePlaceHolder$100000000;->this$0:Lnet/f401/aide/PreferencePlaceHolder;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 41
    iget-object v0, p0, Lnet/f401/aide/PreferencePlaceHolder$100000000;->this$0:Lnet/f401/aide/PreferencePlaceHolder;

    invoke-virtual {v0}, Lnet/f401/aide/PreferencePlaceHolder;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lnet/f401/aide/PreferencePlaceHolder$100000000;->this$0:Lnet/f401/aide/PreferencePlaceHolder;

    iget-object v1, v1, Lnet/f401/aide/PreferencePlaceHolder;->placeHolder:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 43
    iget-object v1, p0, Lnet/f401/aide/PreferencePlaceHolder$100000000;->this$0:Lnet/f401/aide/PreferencePlaceHolder;

    invoke-static {v1}, Lnet/f401/aide/PreferencePlaceHolder;->access$L1000000(Lnet/f401/aide/PreferencePlaceHolder;)Lnet/f401/aide/preference/EnvironmentPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 44
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 45
    const/4 v0, 0x0

    return v0
.end method
