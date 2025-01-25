.class Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/f401/aide/preference/EnvironmentPreference$100000002;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000002;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference$100000002;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;->this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000002;

    iput p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;->val$position:I

    iput-object p3, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;->val$name:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;)Lnet/f401/aide/preference/EnvironmentPreference$100000002;
    .registers 1

    iget-object p0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;->this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000002;

    return-object p0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 96
    iget-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;->this$0:Lnet/f401/aide/preference/EnvironmentPreference$100000002;

    invoke-static {p1}, Lnet/f401/aide/preference/EnvironmentPreference$100000002;->access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000002;)Lnet/f401/aide/preference/EnvironmentPreference;

    move-result-object p1

    invoke-static {p1}, Lnet/f401/aide/preference/EnvironmentPreference;->access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/EnvPreferenceAdapter;

    move-result-object p1

    iget v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;->val$position:I

    sget-object v1, Lnet/f401/aide/FUtils;->DEFAULT_MAP:Landroid/util/ArrayMap;

    iget-object v2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lnet/f401/aide/EnvPreferenceAdapter;->set(ILjava/lang/String;)V

    .line 97
    iget-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;->val$name:Ljava/lang/String;

    sget-object v0, Lnet/f401/aide/FUtils;->DEFAULT_MAP:Landroid/util/ArrayMap;

    iget-object v1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000002$100000001;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lnet/f401/aide/FUtils;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 p1, 0x1

    return p1
.end method
