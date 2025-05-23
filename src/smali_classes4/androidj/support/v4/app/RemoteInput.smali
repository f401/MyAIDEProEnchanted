.class public final Landroidj/support/v4/app/RemoteInput;
.super Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/RemoteInput$Builder;,
        Landroidj/support/v4/app/RemoteInput$Impl;,
        Landroidj/support/v4/app/RemoteInput$ImplApi20;,
        Landroidj/support/v4/app/RemoteInput$ImplBase;,
        Landroidj/support/v4/app/RemoteInput$ImplJellybean;
    }
.end annotation


# static fields
.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field public static final FACTORY:Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final IMPL:Landroidj/support/v4/app/RemoteInput$Impl;

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"

.field private static final TAG:Ljava/lang/String; = "RemoteInput"


# instance fields
.field private final mAllowFreeFormInput:Z

.field private final mChoices:[Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_15

    new-instance v0, Landroidj/support/v4/app/RemoteInput$ImplApi20;

    invoke-direct {v0}, Landroidj/support/v4/app/RemoteInput$ImplApi20;-><init>()V

    sput-object v0, Landroidj/support/v4/app/RemoteInput;->IMPL:Landroidj/support/v4/app/RemoteInput$Impl;

    :goto_d
    new-instance v0, Landroidj/support/v4/app/RemoteInput$1;

    invoke-direct {v0}, Landroidj/support/v4/app/RemoteInput$1;-><init>()V

    sput-object v0, Landroidj/support/v4/app/RemoteInput;->FACTORY:Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    return-void

    :cond_15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_23

    new-instance v0, Landroidj/support/v4/app/RemoteInput$ImplJellybean;

    invoke-direct {v0}, Landroidj/support/v4/app/RemoteInput$ImplJellybean;-><init>()V

    sput-object v0, Landroidj/support/v4/app/RemoteInput;->IMPL:Landroidj/support/v4/app/RemoteInput$Impl;

    goto :goto_d

    :cond_23
    new-instance v0, Landroidj/support/v4/app/RemoteInput$ImplBase;

    invoke-direct {v0}, Landroidj/support/v4/app/RemoteInput$ImplBase;-><init>()V

    sput-object v0, Landroidj/support/v4/app/RemoteInput;->IMPL:Landroidj/support/v4/app/RemoteInput$Impl;

    goto :goto_d
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/app/RemoteInput;->mResultKey:Ljava/lang/String;

    iput-object p2, p0, Landroidj/support/v4/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroidj/support/v4/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    iput-boolean p4, p0, Landroidj/support/v4/app/RemoteInput;->mAllowFreeFormInput:Z

    iput-object p5, p0, Landroidj/support/v4/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public static addResultsToIntent([Landroidj/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4

    sget-object v0, Landroidj/support/v4/app/RemoteInput;->IMPL:Landroidj/support/v4/app/RemoteInput$Impl;

    invoke-interface {v0, p0, p1, p2}, Landroidj/support/v4/app/RemoteInput$Impl;->addResultsToIntent([Landroidj/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 2

    sget-object v0, Landroidj/support/v4/app/RemoteInput;->IMPL:Landroidj/support/v4/app/RemoteInput$Impl;

    invoke-interface {v0, p0}, Landroidj/support/v4/app/RemoteInput$Impl;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAllowFreeFormInput()Z
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/app/RemoteInput;->mAllowFreeFormInput:Z

    return v0
.end method

.method public getChoices()[Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResultKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/RemoteInput;->mResultKey:Ljava/lang/String;

    return-object v0
.end method
