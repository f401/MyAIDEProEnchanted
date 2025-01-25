.class Lnet/f401/aide/preference/EnvironmentPreference$100000003;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/f401/aide/preference/EnvironmentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lnet/f401/aide/preference/EnvironmentPreference;

.field private final synthetic val$keyText:Landroid/widget/EditText;

.field private final synthetic val$valueText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    iput-object p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$keyText:Landroid/widget/EditText;

    iput-object p3, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$valueText:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000003;)Lnet/f401/aide/preference/EnvironmentPreference;
    .registers 1

    iget-object p0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 140
    iget-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$keyText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$valueText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/f401/aide/FUtils;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-static {p1}, Lnet/f401/aide/preference/EnvironmentPreference;->access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/EnvPreferenceAdapter;

    move-result-object p1

    iget-object p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$keyText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$valueText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lnet/f401/aide/EnvPreferenceAdapter;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
