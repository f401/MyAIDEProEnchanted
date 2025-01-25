.class Lnet/f401/aide/preference/EnvironmentPreference$100000004;
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
    name = "100000004"
.end annotation


# instance fields
.field private final synthetic val$finisher:Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;

.field private final synthetic val$nameWidget:Landroid/widget/EditText;

.field private final synthetic val$valueWidget:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$finisher:Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;

    iput-object p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$nameWidget:Landroid/widget/EditText;

    iput-object p3, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$valueWidget:Landroid/widget/EditText;

    return-void
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

    .line 138
    iget-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$finisher:Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;

    if-eqz p1, :cond_1b

    .line 139
    iget-object p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$nameWidget:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$valueWidget:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;->finish(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
