.class public final Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/content/SharedPreferencesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;
    }
.end annotation


# static fields
.field private static sInstance:Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;


# instance fields
.field private final mHelper:Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    invoke-direct {v0}, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    return-void
.end method

.method public static getInstance()Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;
    .registers 1

    sget-object v0, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;

    if-nez v0, :cond_b

    new-instance v0, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;

    invoke-direct {v0}, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;-><init>()V

    sput-object v0, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;

    :cond_b
    sget-object v0, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 3
    .param p1  # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    invoke-virtual {v0, p1}, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
